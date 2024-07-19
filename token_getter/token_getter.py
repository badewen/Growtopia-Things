# BIG THANKYOU TO amertabyte for fixing my script!!!

# NOT SUPPORTED YET!!!
AUTO_CREATE_ACCOUNT = False # for the google login. it will automatically input randomly generated growid 

import logging
import requests
import bs4
import urllib
import enum 
import orjson
from types import UnionType
from seleniumrequests import Chrome
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import *
import selenium_stealth
import time
import random
from fake_useragent import UserAgent

import string

def pretty_print_cookies(cookies: requests.cookies.RequestsCookieJar):
    for item in cookies:
        print(item.name + ": " + item.value)

def print_content_and_cookies(http_res):
    print("COOKIES: ")
    pretty_print_cookies(http_res.cookies)

    print("RESPONSE BODY: ")
    print(http_res.content.decode("utf-8"))

def wait_for_page_change(current_page: str, timeout: int, browser: webdriver.Chrome):
    for i in range(0, timeout):
        if current_page != browser.page_source:
            return
        time.sleep(1)
    
    raise TimeoutException()


class LoginType(enum.StrEnum):
    Google = "/google/",
    Legacy = "/growid/"

def extract_login_url(page_source: str, login_type: LoginType):
    page_source_bs4 = bs4.BeautifulSoup(page_source, "html.parser")

    for a in page_source_bs4.find_all("a"):
        if login_type.value in a["href"]:
            return a["href"]
    
    return ""

def get_login_form_url(session: requests.Session, login_type: LoginType):
    login_data_xx = """tankIDName|\ntankIDPass|\nrequestedName|MouseGar\nf|1\nprotocol|208\ngame_version|4.61\nfz|47142936\nlmode|0\ncbits|1056\nplayer_age|18\nGDPR|1\ncategory|_-5100\ntotalPlaytime|0\nklv|e10b1febd7cb294a9ed8dc5b756ab87f"""
    login_data = urllib.parse.quote(login_data_xx, safe='')

    session.headers["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0"

    print("REQUESTING DATA FROM LOGIN DASHBOARD...")

    try:
        dashboard_res = session.post("https://login.growtopiagame.com/player/login/dashboard", login_data, verify=True, timeout=25)
    except requests.exceptions.Timeout:
        return ""

    return extract_login_url(dashboard_res.text, login_type)


class LoginStatus(enum.Enum):
    Success = 0, # returns login token
    Failed = 1, # usually means the server returned status for anything except success. check second returned value to get the status. 
                # also could be the requests/selenium related exceptions.
    InvalidResponse = 2, # the server returned invalid response
    WrongCreds = 3, # wrong password and/or growid
    Timeout = 4,
    GenericHttpError = 5, #returns the http request result as the second value

    CaptchaRequested = 6, # usually from google
    UnsafeBrowser = 7, # from google too. Use GSuite emails

    CreateAccountRequested = 8,


def growid_login(session: requests.Session, link: str, growid: str, password: str) -> (LoginStatus, None | str | int):
    print("GETTING LOGIN FORM PAGE")

    login_form_res = session.get(link, verify=True)
    login_form_bs4 = bs4.BeautifulSoup(login_form_res.content.decode("utf-8"), "html.parser")

    login_form_token = login_form_bs4.find("input", {"name": "_token"})["value"]

    print("REQUESTING TO /player/login/validate")

    try:
        validate_login_res = session.post("https://login.growtopiagame.com/player/growid/login/validate", {
            "_token": login_form_token,
            "growId": growid,
            "password": password
        }, allow_redirects=False)
    except Exception as e:
        return LoginStatus.Failed, e.__class__.__name__

    if validate_login_res.status_code == 302:
        print("WRONG CREDENTIAL : ", growid, password)
        return LoginStatus.WrongCreds
    elif validate_login_res.status_code == 200:
        try:
            account_json: dict = orjson.loads(validate_login_res.content)
        except orjson.JSONDecodeError:
            return LoginStatus.InvalidResponse, validate_login_res.content

        if account_json["status"] != "success":
            return LoginStatus.Failed, account_json["status"]

        if not ("token" in account_json):
            return LoginStatus.InvalidResponse, validate_login_res.content

        return LoginStatus.Success, account_json["token"]
    else:
        return LoginStatus.GenericHttpError, validate_login_res

def check_wrong_creds(page_source: str):
    wrong_creds_list = ["find your Google Account", "Wrong password", "password was changed"]

    if any(substring in page_source for substring in wrong_creds_list):
        return True

    return False

def check_captcha(page_source: str):
    return "Type the text you hear" in page_source

def check_unsafe_browser(page_source: str):
    return "different browser" in page_source
    
def check_should_create_growid(page_source: str):
    return "Choose your name in Growtopia" in page_source or "Oops! The name is unavailable. Please choose a different name." in page_source

def google_login(browser: Chrome, email: str, password: str):
    try:
        link = get_login_form_url(browser.requests_session, LoginType.Google)

        browser.get(link)     

        print("INPUTTING GMAIL ADDRESS")
        email_input = browser.find_element(By.NAME, "identifier")

        for char in email:
            time.sleep(random.randrange(200, 500)/1000)
            email_input.send_keys(char)

        time.sleep(random.randrange(3, 5))

        email_input.send_keys(webdriver.Keys.ENTER)

        WebDriverWait(browser, 10).until(EC.url_contains("https://accounts.google.com/v3/signin/challenge/pwd"))

        print("INPUTING GMAIL PASSWORD")
        password_input = browser.find_element(By.NAME, "Passwd")

        for char in password:
            time.sleep(random.randrange(500, 800)/1000)
            password_input.send_keys(char)

        time.sleep(random.randrange(3, 5))

        password_input.send_keys(webdriver.Keys.ENTER)

        WebDriverWait(browser, 20).until(EC.url_contains("login.growtopiagame.com/player/growid/logon-name/"))

        while check_should_create_growid(browser.page_source):
            if not AUTO_CREATE_ACCOUNT:
                return LoginStatus.CreateAccountRequested

            generated_growid = ''.join(random.choices(string.ascii_uppercase + string.digits, k=5))

            growid_input = browser.find_element(By.ID, "login-name")
            growid_input.clear()

            print("INPUTTING "+ generated_growid + " AS THE GROWID")
            growid_input.send_keys(generated_growid)

            time.sleep(4)
            current_page = browser.page_source

            growid_input.send_keys(webdriver.Keys.ENTER)

            time.sleep(5)

            wait_for_page_change(current_page, 20, browser)        

        response_json = browser.find_element(By.XPATH, "//body")

        try:
            account_json: dict = orjson.loads(response_json.text)
        except orjson.JSONDecodeError:
            return LoginStatus.InvalidResponse, validate_login_res.content

        if account_json["status"] != "success":
            return LoginStatus.Failed, account_json["status"]

        if not ("token" in account_json):
            return LoginStatus.InvalidResponse, validate_login_res.content

        return LoginStatus.Success, account_json["token"]

    except TimeoutException:
        if check_wrong_creds(browser.page_source):
            return LoginStatus.WrongCreds
        elif check_captcha(browser.page_source):
            return LoginStatus.CaptchaRequested
        elif check_unsafe_browser(browser.page_source):
            return LoginStatus.UnsafeBrowser
        
        return LoginStatus.Timeout
    except NoSuchElementException:
        return LoginStatus.InvalidResponse    

    return LoginStatus.Failed # safest to return lol


# dashboard_data = get_login_form_url(session, LoginType.Google)

# if dashboard_data == "":
#     print("LOGIN DASHBOARD TIMEOUT")
#     exit(1)

# print(dashboard_data)
# print(google_login(session, browser_driver, "232914@smklabor.sch.id", "serevanus08@"))

def growid_login_mode(session: requests.Session):
    print("[GROWID/LEGACY LOGIN MODE]")
    growid = input("Input your GrowID: ")
    password = input("Input your password: ")

    dashboard_data = get_login_form_url(session, LoginType.Legacy) 

    if dashboard_data == "":
        print("LOGIN DASHBOARD TIMEOUT")
        exit(1)

    print(growid_login(session, dashboard_data, growid, password))

    pass

def google_login_mode(browser: Chrome):
    print("[GOOGLE LOGIN MODE]")
    gmail = input("Input your Gmail: ")
    password = input("Input your password: ")

    print(google_login(browser, gmail, password))

    pass

if __name__ == "__main__":
    print("TOKEN GETTER MADE BY https://www.github.com/badewen")
    print("SELECT OPTIONS")
    print("[0] GROWID LOGIN")
    print("[1] GOOGLE LOGIN")

    # Bro i deadass cant disable logging
    logger = logging.getLogger('selenium.webdriver.remote.remote_connection')
    logger.setLevel(logging.WARNING)

    session = requests.session()
    browser_opt = webdriver.ChromeOptions()

    browser_opt.add_experimental_option("useAutomationExtension", False)
    browser_opt.add_experimental_option("excludeSwitches", ["enable-automation", "enable-logging"])
    browser_opt.add_argument("--headless=new")
    browser_driver = Chrome(options=browser_opt)

    selenium_stealth.stealth(
        browser_driver,
        UserAgent=UserAgent(),
        platform="Win32"
    )

    mode = input()

    if mode == '0':
        growid_login_mode(session)
    elif mode == '1':
        google_login_mode(browser_driver)
    else:
        print("INVALID OPTION!!!")
        exit(1)

    print("FINISHED!!")

import random, string
from selenium import webdriver
from random import choice
from string import ascii_uppercase
from faker import Faker
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions as EC

chrome_options = Options()
options = webdriver.ChromeOptions()
driver.get('http://www.google.com')

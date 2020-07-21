from selenium.webdriver.chrome.webdriver import WebDriver
from selenium.webdriver import ChromeOptions

class Selenium_set_browser(object):
    """
    This default template for set options browser in init for chrome
    """
    def Convert_to_array(self,args):
        return args.split()

    def Setter_Chrome_Option(self,*options):
        chrome_option = ChromeOptions()
        # print(options)
        # options = self.Convert_to_array(options)
        if len(options) > 0:
            for opt in options:
                print(opt)
                chrome_option.add_argument(opt)
        else:
            pass
        return chrome_option

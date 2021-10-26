from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction

@keyword(name='Drag and Drop')
def drag_drop(Locator, p_origin, p_final):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    ele_origin = driver.find_elements_by_id(Locator)[int(p_origin)]
    ele_final = driver.find_elements_by_id(Locator)[int(p_final)]

    actions = TouchAction(driver)
    actions.long_press(ele_origin).move_to(ele_final)
    actions.release()
    actions.perform()
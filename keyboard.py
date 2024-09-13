from aiogram.types import InlineKeyboardButton, InlineKeyboardMarkup
from database.requests import get_categories, get_category_device
from aiogram.utils.keyboard import InlineKeyboardBuilder

menu = InlineKeyboardMarkup(
    inline_keyboard=[
        [InlineKeyboardButton(text="Адреса магазинов", callback_data="addresses")],
        [InlineKeyboardButton(text="Записаться на укладку", callback_data="beauty")],
        [InlineKeyboardButton(text="Каталог товаров", callback_data="shop")],
        [InlineKeyboardButton(text="Сотрудничество", callback_data="collaboration")],
        [InlineKeyboardButton(text="Ремонт", callback_data="repair")],
        [InlineKeyboardButton(text="О нас", callback_data="about")],
        [InlineKeyboardButton(text="Справка", callback_data="help")],
    ],
    resize_keyboard=True,
    input_field_placeholder="Выберите пункт меню:",
)


async def categories():
    all_categories = await get_categories()
    keyboard = InlineKeyboardBuilder()
    for category in all_categories:
        keyboard.add(
            InlineKeyboardButton(
                text=category.name, callback_data=f"category_{category.id}"
            )
        )
    keyboard.add(InlineKeyboardButton(text="На главную", callback_data="to_main"))
    return keyboard.adjust(2).as_markup()


async def devices(category_id):
    all_devices = await get_category_device(category_id)
    keyboard = InlineKeyboardBuilder()
    for device in all_devices:
        keyboard.add(
            InlineKeyboardButton(
                text=device.name, callback_data=f"category_{device.id}"
            )
        )
    keyboard.add(InlineKeyboardButton(text="На главную", callback_data="to_main"))
    return keyboard.adjust(2).as_markup()

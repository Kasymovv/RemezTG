from aiogram.types import InlineKeyboardButton, InlineKeyboardMarkup
from aiogram.utils.keyboard import InlineKeyboardBuilder
from database.requests import (
    get_categories,
    get_categories_city,
    get_categories_repair_city,
    get_category_item,
)

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

to_main_page = InlineKeyboardMarkup(
    inline_keyboard=[[InlineKeyboardButton(text="На главную", callback_data="to_main")]]
)
prev_page = InlineKeyboardMarkup(
    inline_keyboard=[
        [InlineKeyboardButton(text="Обратно", callback_data="prev_page")],
        [InlineKeyboardButton(text="На главную", callback_data="to_main")],
    ]
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


async def items(category_id):
    all_items = await get_category_item(category_id)
    keyboard = InlineKeyboardBuilder()
    for item in all_items:
        keyboard.add(
            InlineKeyboardButton(text=item.name, callback_data=f"item_{item.id}")
        )
    keyboard.add(InlineKeyboardButton(text="На главную", callback_data="to_main"))
    return keyboard.adjust(2).as_markup()


async def cities():
    all_cities = await get_categories_city()
    keyboard = InlineKeyboardBuilder()
    for cities in all_cities:
        keyboard.add(
            InlineKeyboardButton(text=cities.name, callback_data=f"city_{cities.id}")
        )
    keyboard.add(InlineKeyboardButton(text="Другой", callback_data="another"))
    keyboard.add(InlineKeyboardButton(text="На главную", callback_data="to_main"))
    return keyboard.adjust(2).as_markup()


async def repair_cities():
    all_cities = await get_categories_repair_city()
    keyboard = InlineKeyboardBuilder()
    for cities in all_cities:
        keyboard.add(
            InlineKeyboardButton(
                text=cities.name, callback_data=f"repair_city_{cities.id}"
            )
        )
    keyboard.add(InlineKeyboardButton(text="Другой", callback_data="another_repair"))
    keyboard.add(InlineKeyboardButton(text="На главную", callback_data="to_main"))
    return keyboard.adjust(2).as_markup()

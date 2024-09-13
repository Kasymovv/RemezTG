from aiogram.types import InlineKeyboardButton, InlineKeyboardMarkup

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
    input_field_placeholder="Выберите пункт меню",
)

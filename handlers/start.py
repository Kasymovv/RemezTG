import keyboard
from aiogram import Router
from aiogram.types import Message
from aiogram.filters import CommandStart

router = Router()


@router.message(CommandStart())
async def start(message: Message):
    await message.answer(
        """Привет! 

Это Telegram-бот от компании REMEZ.
Здесь можно подобрать устройство, узнать о сотрудничестве, уточнить адреса магазинов, и получить информацию по ремонту.

Официальный сайт: remez.com.ru
""",
        reply_markup=keyboard.menu,
    )

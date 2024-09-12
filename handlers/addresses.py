from aiogram import Router
from aiogram.types import Message
from aiogram.filters import Command

router = Router()


@router.message(Command("addresses"))
async def addresses(message: Message):
    await message.answer("Адреса магазинов")

from aiogram import Router
from aiogram.types import Message
from aiogram.filters import Command

router = Router()


@router.message(Command("collaboration"))
async def collaboration(message: Message):
    await message.answer("Информация о сотрудничестве")

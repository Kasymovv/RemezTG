from aiogram import Router
from aiogram.types import Message
from aiogram.filters import Command

router = Router()


@router.message(Command("repair"))
async def repair(message: Message):
    await message.answer("Информация о ремонте и работе сервисных центров")

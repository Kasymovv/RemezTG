from aiogram import Router
from aiogram.types import Message
from aiogram.filters import Command

router = Router()


@router.message(Command("idea"))
async def idea(message: Message):
    await message.answer("Замысел")

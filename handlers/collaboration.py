from aiogram import Router
from aiogram.types import Message
from aiogram.filters import Command

router = Router()


@router.message(Command("collaboration"))
async def collaboration(message: Message):
    await message.answer("""
Если Вы инфлюенсер, стилист, блогер: @irina_irita - instagram

Оптовые продажи: i.fomina@romatigroup.com

PR и маркетинг: i.petrova@romatigroup.com

Логистика: info@remezair.com

Прочее сотрудничество: info@remez.com.ru

""")

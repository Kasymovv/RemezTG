from aiogram import Router, F
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
from aiogram.utils.markdown import hlink
import keyboard as kb

router = Router()


@router.callback_query(F.data == "help")
async def help(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        text=hlink("Официальный сайт\n\n", "remez.com.ru")
        + "<b>Социальные сети:</b>\n\n"
        + hlink("Telegram\n", "https://telegram.me/Romati_Service_bot")
        + hlink("VK\n", "vk.com/remezair")
        + hlink(
            "Whatsapp\n\n",
            "https://api.whatsapp.com/send/?phone=79652546814&text&type=phone_number&app_absent=0",
        )
        + "<b>Почта:\n</b>"
        + """
Общее: info@remez.com.ru
Сервис и гарантия: service@romatigroup.com
Оптовые продажи: i.fomina@romatigroup.com
PR и маркетинг: a.zharikova@romatigroup.com
Логистики: info@remezair.com\n
"""
        + "<b>Телефон:</b>\n\n"
        + """8-800-333-05-69 - Ежедневно 09.00 - 21.00 (по московскому времени)""",
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )

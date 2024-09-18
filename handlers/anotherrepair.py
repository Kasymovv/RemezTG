from aiogram import Router, F
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "another_repair")
async def help(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
К сожалению в Вашем городе мы не открыли сервисный центр, но мы можем принять Ваше устройство на диагностику в наш фирменный сервисный центр, который находится в городе Москве.

Мы можем создать для Вас отправление с помощью транспортной компании СДЕК, Вы по номеру отправления сможете отправить устройство на диагностику, которая занимает в среднем 1-2 дня. В случае неисправности в течении гарантийного срока транспортировка будет бесплатной.

Чтобы оформить отправление, напишите нам на почту <b>service@romatigroup.com</b> или позвоните нам <b>8-800-333-05-69</b>

  """,
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )

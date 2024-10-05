from aiogram import Router, F
from aiogram.enums import ParseMode, parse_mode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "card")
async def card(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
<b>Юридический адрес:</b>

121615, г. Москва, муниципальный округ Кунцево вн.тер.г., Рублёвское ш, д. 22, к. 1, помещ. 364

ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "РОМАТИ"

ИНН 7730213981
ОГРН 1167746874855
КПП 773101001

143421, Красногорск городской округ, МО, Новорижское шоссе д. 5, стр. 3, ООО «РОМАТИ»

REMEZ. Эстетика инженерии. Технологичные устройства для жизни.
    """,
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )

from aiogram import Router, F
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "help")
async def help(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
<b>Сайт: </b>

remez.com.ru - официальный сайт

<b>Социальные сети: </b>

@remez_ru - Instagram
@Romati_Service_bot - Telegram
vk.com/remezair - VK
+7-926-160-91-75 - Whatsapp

<b>Почта:</b>

info@remez.com.ru - Общее
service@romatigroup.com - Ремонт и сервисные вопросы
i.fomina@romatigroup.com - Оптовые продажи
a.zharikova@romatigroup.com - PR и маркетинг
info@remezair.com - Логистика

<b>Телефон:</b>

8-800-333-05-69 - Ежедневно 09.00 - 21.00 (по московскому времени)

<b>Юридический адрес:</b>

121615, г. Москва, муниципальный округ Кунцево вн.тер.г., Рублёвское ш, д. 22, к. 1, помещ. 364

ООО «РОМАТИ»
    """,
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )

from aiogram import Router, F
from aiogram.types import CallbackQuery

router = Router()


@router.callback_query(F.data == "help")
async def help(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
Сайт: 

remez.com.ru - официальный сайт

Социальные сети:

@remez_ru - Instagram
@Romati_Service_bot - Telegram
7 926 160 91 75 - Whatsapp
vk.com/remezair - VK

Почта:

info@remez.com.ru - Общее
service@romatigroup.com - Ремонт и сервисные вопросы
i.fomina@romatigroup.com - Оптовые продажи
a.zharikova@romatigroup.com - PR и маркетинг
info@remezair.com - Логистика

Телефон:

8 800 333 05 69 - Ежедневно 09.00 - 21.00 (по московскому времени)

Юридический адрес:

121615, г. Москва, муниципальный округ Кунцево вн.тер.г., Рублёвское ш, д. 22, к. 1, помещ. 364

ООО «РОМАТИ»
    """,
        disable_web_page_preview=True,
    )

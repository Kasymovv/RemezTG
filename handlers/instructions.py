from aiogram import Router, F
from aiogram.enums import ParseMode, parse_mode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "instructions")
async def instructions(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
<b>AirCreator</b>

AirCreator+ PLASM-AR (RMC-411PRO):
clck.ru/3DcUv2

AirCreator(RMC-411):
clck.ru/3DcUv2

AirCreator IONIZER(RMC-411i):
clck.ru/3DcVCp

SensoStation(RMC-SS):
clck.ru/3DcV7X

Подключение к Wi-Fi:
clck.ru/3DcVJg

<b>IQSelf </b>

IQSelf (RMVC-601):
clck.ru/3DcVNT

IQSelf+ (RMVC-603):
clck.ru/3DcVQH

<b>Model S</b>

Model S+ белый (RMB-708b):
clck.ru/3DcVWJ

Model S+ графит (RMB-707b):
clck.ru/3DcVmc

Model S белый (RMB-708):
clck.ru/3DcW8s

Model S графит (RMB-707):
clck.ru/3DcWDC

<b>Model E </b>

Model E красный (RMB-703):
clck.ru/3DcWJm

Model E графит (RMB-701):
clck.ru/3DcWLz

<b>MultiClick PRO </b>

MultiClick PRO (RMVC-503):
clck.ru/3DcWSs

MultiClick PRO Aqua (RMVC-504):
clck.ru/3DcWVD

MultiClick PRO Aqua Plus (RMVC-505):
clck.ru/3DcWXP

MultiClick PRO Energy (RMVC-503B):
clck.ru/3DcWaS

MultiClick Pro Energy Aqua (RMVC-504B):
clck.ru/3DcWgz

MultiClick PRO Energy Aqua Plus (RMVC-505B):
clck.ru/3DcWkX

MultiClick PRO Telescopic (RMVC-533):
clck.ru/3DcWo7

MultiClick Pro Aqua Telescopic (RMVC-534):
clck.ru/3DcWox

MultiClick PRO Energy V.2 (RMVC-543):
clck.ru/3DcWzp

MultiClick PRO Energy V.2 Aqua (RMVC-544):
clck.ru/3DcWzp

MultiClick PRO Energy V.2 Aqua Plus (RMVC-535):
clck.ru/3DcX8P

<b>AquaStream </b>

AquaStream S (RMVC-551):
clck.ru/3DcXCw

AquaStream Pro (RMVC-553):
https://clck.ru/3DcXGS

<b>AeroStream </b>

RMCL-401 климатический комплекс
clck.ru/3DcXdV

RMCL-402 климатический комплекс
clck.ru/3DcXPi

RMCH-403-01 климатический комплекс 6 в 1
clck.ru/3DcXXg

RMHC-403-02 климатический комплекс 6 в 1
clck.ru/3DcXXg

<b>AeroDry</b>

RMD-301:
clck.ru/3DcXjd

RMD-302:
clck.ru/3DcXo3

RMD-303:
clck.ru/3DcXvg

RMD-304:
clck.ru/3DcXwj

RMD-305:
clck.ru/3DcXyg

RMD-311:
clck.ru/3DcXqR

RMD-312:
clck.ru/3DcXtj

<b>MultiSine</b>

RMGC-01:
clck.ru/3DcY4f

RMGC-02:
clck.ru/3DcY5U
    """,
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )

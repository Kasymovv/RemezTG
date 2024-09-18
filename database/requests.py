from database.models import (
    Address,
    City,
    Repair_Address,
    Repair_City,
    async_session,
    Item,
    Category,
)
from sqlalchemy import select


async def get_categories():
    async with async_session() as session:
        return await session.scalars(select(Category))


async def get_category_item(category_id):
    async with async_session() as session:
        return await session.scalars(select(Item).where(Item.category == category_id))


async def get_item(item_id):
    async with async_session() as session:
        return await session.scalar(select(Item).where(Item.id == item_id))


async def get_categories_city():
    async with async_session() as session:
        return await session.scalars(select(City))


async def get_categories_repair_city():
    async with async_session() as session:
        return await session.scalars(select(Repair_City))


async def get_city(city_id):
    async with async_session() as session:
        query = select(Address).where(Address.city == city_id)
        result = await session.execute(query)
        return result.scalars().all()


async def get_repair_city(repair_city_id):
    async with async_session() as session:
        query = select(Repair_Address).where(Repair_Address.city == repair_city_id)
        result = await session.execute(query)
        return result.scalars().all()

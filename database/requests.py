from database.models import Address, City, async_session, Item, Category
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


async def get_category_address(address_id):
    async with async_session() as session:
        return await session.scalars(select(Address).where(Address.city == address_id))


async def get_address(city_id):
    async with async_session() as session:
        return await session.scalar(select(Address).where(Address.id == city_id))

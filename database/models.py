from sqlalchemy import Boolean, ForeignKey, String
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.ext.asyncio import AsyncAttrs, async_sessionmaker, create_async_engine

engine = create_async_engine(url="sqlite+aiosqlite:///db.sqlite3")
async_session = async_sessionmaker(engine)


class Base(AsyncAttrs, DeclarativeBase):
    pass


# class Address(Base):
#     id: Mapped[int] = mapped_column(primary_key=True)
#     name: Mapped[str] = mapped_column(String(25))
#     adress: Mapped[str] = mapped_column(String(25))
#     time: Mapped[str] = mapped_column(String(25))
#
#
# class Service(Base):
#     __tablename__ = "services"
#
#     id: Mapped[int] = mapped_column(primary_key=True)
#     city: Mapped[str] = mapped_column(String(25))
#     address: Mapped[str] = mapped_column(String(25))
#     phone: Mapped[int] = mapped_column()


class Category(Base):
    __tablename__ = "categories"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(25))


class Device(Base):
    __tablename__ = "devices"

    id: Mapped[int] = mapped_column(primary_key=True)
    category: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    name: Mapped[str] = mapped_column(String(25))
    price: Mapped[int] = mapped_column()
    availability: Mapped[bool] = mapped_column(Boolean)
    buy: Mapped[str] = mapped_column(String(25))


async def async_main():
    async with engine.begin() as connect:
        await connect.run_sync(Base.metadata.create_all)

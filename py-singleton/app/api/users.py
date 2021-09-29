from ..db import database, requires_connection


@requires_connection
async def handler() -> str:
    user = await database.user.find_first()
    if user is not None:
        return user.json()
    return 'null'

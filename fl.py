from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return(
    '''
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Стена</title>
</head>
<body>
    Форма логина и регистрации. При вводе несуществующего имени зарегистрируется новый пользователь.
    <form action="/cgi-bin/wall.py">
        Логин: <input type="text" name="login">
        Пароль: <input type="password" name="password">
        <input type="hidden" name="action" value="login">
        <input type="submit">
    </form>

    {posts}

    {publish}
</body>
</html>
''')

if __name__ == '__main__':
    app.run()

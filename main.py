from bottle import Bottle, run, template, request, ext, redirect, abort
from datetime import date
import sqlite3

app = Bottle()

@app.route('/', template='index')
def index():
    ip = request.get('REMOTE_ADDR')
    connect = sqlite3.connect('dontforget.db')
    c = connect.cursor()
    c.execute('SELECT title, id FROM notes WHERE ip = \'%s\'' % (ip))
    result = c.fetchall() 
    c.close()
    return dict(notes=result) 

@app.route('/new', template='new')
def new_get():
    pass

@app.route('/new', method='POST', template='new')
def new_post():
    ip = request.get('REMOTE_ADDR')
    title = request.forms.get('title')
    note = request.forms.get('note')
    created = date.today()

    connect = sqlite3.connect('dontforget.db')
    c = connect.cursor()
    c.execute('INSERT INTO notes VALUES(NULL, \'%s\', \'%s\', \'%s\', \'%s\');' % (ip, title, note, created))
    connect.commit()
    c.close()
    redirect('/')

@app.route('/post/<id:int>', template='post')
def post_view(id):
    ip = request.get('REMOTE_ADDR')
    connect = sqlite3.connect('dontforget.db')
    c = connect.cursor()
    c.execute('SELECT title, note FROM notes WHERE ip = \'%s\' and id = \'%s\';' % (ip, id))
    result = c.fetchall()
    c.close()
    if result:
        return dict(id=id, title=result[0][0], post=result[0][1])
    abort(404)

@app.route('/post/<id:int>/delete')
def delete(id):
    ip = request.get('REMOTE_ADDR')
    connect = sqlite3.connect('dontforget.db')
    c = connect.cursor()
    c.execute('DELETE FROM notes WHERE id = \'%s\' and ip = \'%s\';' % (id, ip))
    connect.commit()
    c.close()
    redirect('/')

@app.route('/post/<id:int>/edit', template='edit')
def edit_get(id):
    ip = request.get('REMOTE_ADDR')
    connect = sqlite3.connect('dontforget.db')
    c = connect.cursor()
    c.execute('SELECT title, note FROM notes WHERE id = \'%s\' and ip = \'%s\';' % (id, ip))
    result = c.fetchall()
    c.close()
    if result:
        return dict(title=result[0][0], note=result[0][1], id=id)
    abort(404)

@app.route('/post/<id:int>/edit', template='edit', method='POST')
def edit_post(id):
    ip = request.get('REMOTE_ADDR')
    title = request.forms.get('title')
    note = request.forms.get('note')

    connect = sqlite3.connect('dontforget.db')
    c = connect.cursor()
    c.execute('UPDATE notes SET title = \'%s\', note=\'%s\' WHERE id=\'%s\';' % (title, note, id))
    connect.commit()
    c.close()
    redirect('/')

run(app, host='localhost', port=1111)

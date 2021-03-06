# add / to PYTHONPATH so `import support_files` works
export PYTHONPATH=/:$PYTHONPATH

# create users
python webrecorder/admin.py -c david@example.com david Password1 archivist 'David Lightman'
python webrecorder/admin.py -c jennifer@example.com jennifer Password1 archivist 'Jennifer Mack'

uwsgi /code/apps/frontend.ini /support_files/frontend.ini
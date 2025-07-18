from itsdangerous import URLSafeTimedSerializer
salt='extra@123'
secret_key='codegnan@2018'
def entoken(data):
    serializer=URLSafeTimedSerializer(secret_key)
    return serializer.dumps(data,salt)
def dtoken(data):
    serializer=URLSafeTimedSerializer(secret_key)
    return serializer.loads(data,salt=salt)
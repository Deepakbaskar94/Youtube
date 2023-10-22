import json

def lambda_handler(event, context):
    # TODO implement
    print(event)
    
    if event["requestContext"]["http"]["method"] == "GET":
        movie_id_received = event["queryStringParameters"]["movie_id"]
        movie_id_received = int(movie_id_received) + 1
        return {'movie_id_received': movie_id_received }
                
    elif event["requestContext"]["http"]["method"] == "POST":
        body_data = event["body"]
        body_data = json.loads(body_data)
        movie_name = body_data["movie_name"]
        return {'movie_name': movie_name}

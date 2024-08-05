import requests

# Define global variables
SESSION = None


def create_session():
    """Create a session using the global base URL."""
    global SESSION
    SESSION = requests.Session()


def get_on_session(url):
    """Perform a GET request using the session."""
    global SESSION
    response = SESSION.get(url)
    return response


def validate_response_code(response, expected_code):
    """Validate the response code of the request."""
    response_code = str(response.status_code)
    if response_code != str(expected_code):
        return False
    return True


def validate_response_format(response, expected_format):
    """Validate the response format (Content-Type header)."""
    content_format = response.headers.get('Content-Type')
    if content_format != expected_format:
        return False
    return True

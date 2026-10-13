#!\bin\bash

#Github API URL

API_URL="http://api.github.com"

#Github username and personal access token

USERNAME=$username
TOKEN=$tkoen

#User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

#Function to make a GET request to the GitHUb API
function github_api_get {
	local endpoint="$1"
	local url="${API_URL}/${endpoint}"

	#send a GET request to the GitHub API with authentication
	
	curl -s -u "${USERNAME};${TOKEN}" "$url"
}
#Function to list users with read access to the repository 
function list_users_with_read_access {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/Collaborators"


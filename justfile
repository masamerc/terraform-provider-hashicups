# Variables
GREETING := "Hello, world!"
export TF_LOG_PATH := "trace.txt"
export TF_LOG_PROVIDER := "DEBUG"

# Print a greeting message
default:
    @echo "{{GREETING}}"

# Check API health endpoint
api-health:
    curl localhost:19090/health/readyz

# Sign up a new user via API
api-signup:
    curl -X POST localhost:19090/signup -d '{"username":"education", "password":"test123"}'

# Run terraform plan for coffees data source
terraform-plan-coffees-data-source:
    cd examples/coffees && \
    terraform plan

local webhook(name = 'web', 
    events=["check_run", "push"],  
    url = "https://example.com/webhook",
    content_type = "json",
    webhook_secret = "") = {
  name:  name,
  active: true,
  events: events,
  config:{
     url:url,
     content_type:content_type,
     insecure_ssl:"0",
     secret: webhook_secret
  },
};


webhook(
    name=std.extVar("webhook_name"),
    url=std.extVar("webhook_url"),
    webhook_secret=std.extVar("webhook_secret"),
    content_type=std.extVar("content_type"),
)

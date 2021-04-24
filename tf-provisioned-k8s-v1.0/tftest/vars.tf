variable "msg" {
  description = "Message"
  type        = string
  default = "Hello World TF!"
}

variable "list" {
  description = "values in list"
  type        = list(string)
  default = ["abc"]
}

variable "map-1" {
  type        = map(string)
  description = "Lista para teste"
  default     = {
    "x" = "abc"
    "y" = "def"
    }
}

variable "map-2" {
  type        = map(string)
  description = "Lista para teste"
  default     = {
    "x" = "abc"
    "y" = null
    }
}


variable "map-3" {
  type        = map(string)
  description = "Lista para teste"
  default     = {
    "x" = null
    "y" = null
    }
}

variable "animal" {
    description = "Enter dog, cat or snake"
    type = string
}
locals {
    prefix_map = {
        dog = "ruff"
        cat = "meow"
        snake = "hiss"
    }
}
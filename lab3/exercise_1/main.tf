resource "random_pet" "pets" {
    count = 3
    prefix = var.prefix
    length = var.length
    separator = var.separator
}

resource "local_file" "pet" {
    filename = "${path.cwd}/${var.filename}"
    content = join("\n", random_pet.pets[*].id)
}
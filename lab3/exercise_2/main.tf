resource "random_pet" "pet" {
    prefix = local.prefix_map[var.animal]
    length = 2
}
output "pet-name" {
    value = random_pet.pet.id
}
import pygame 

# Initialize Pygame
pygame.init()

#Main Grid
my_list=[""]
# Set up the display
screen_width = 800
screen_height = 600
screen = pygame.display.set_mode((screen_width, screen_height))
pygame.display.set_caption("Image Example")

# Load the image
image = pygame.image.load("img.png")  # Replace "img.png" with your image file
image = pygame.transform.scale(image, (200, 200))  # Optional: Resize the image

# Get the image's rectangle
image_rect = image.get_rect()
image_rect.center = (screen_width // 2, screen_height // 2)

# Game loop
running = True
while running:
    if event.type == pygame.KEYDOWN:
        if event.key == pygame.K_LEFT:
            main_x=main_x-10
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
    # Clear the screen
    screen.fill((255, 255, 255))  # White background

    # Draw the image
    screen.blit(image, image_rect)

    # Update the display
    pygame.display.flip()


# Quit Pygame
pygame.quit()


def delete_favorite
    Favorite.where(show_id: $current_show_id).destroy
    system("artii 'Favorite Deleted' --font slant")

end

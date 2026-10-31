SELECT file_id, method_idx, descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
    (class_descriptor='Lorg/telegram/ui/ProfileActivity;' AND name='C4') OR
    (class_descriptor='Lorg/telegram/messenger/MediaController;' AND name='saveFile')
)
ORDER BY file_id, method_idx

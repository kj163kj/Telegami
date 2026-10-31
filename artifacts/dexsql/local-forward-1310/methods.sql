SELECT file_id,method_idx,descriptor FROM methods
WHERE method_kind IS NOT NULL AND (
class_descriptor IN ('Lorg/telegram/ui/ActionBar/AlertDialog$Builder;','Lorg/telegram/ui/ActionBar/e2;') OR
(class_descriptor='Lorg/telegram/messenger/FileLoader;' AND name IN
('loadFile','getAttachFileName','getPathToAttach','getPathToMessage','getClosestPhotoSizeWithSize','isLoadingFile')) OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name IN ('getSize','getMessageSize')) OR
(class_descriptor='Lorg/telegram/messenger/ImageLocation;' AND name='getForPhoto') OR
(class_descriptor='Lorg/telegram/messenger/NotificationCenter;' AND name IN ('getInstance','addObserver','removeObserver')) OR
class_descriptor='Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;' OR
(class_descriptor='Lorg/telegram/messenger/SendMessagesHelper;' AND name IN ('generatePhotoSizes','sendMessage')) OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('v','ad','getResourceProvider','y6')))
ORDER BY file_id,method_idx

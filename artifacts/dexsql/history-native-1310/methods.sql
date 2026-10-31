SELECT file_id,method_idx,descriptor FROM methods WHERE method_kind IS NOT NULL AND (
(class_descriptor='Lorg/telegram/ui/ActionBar/r2;' AND name IN ('createActionBar','getActionBar')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/l;' AND name IN ('getTitle','setTitle','setSubtitle','setBackButtonImage','getBackButton','setOccupyStatusBar','i','w')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/z;' AND name='a') OR
(class_descriptor='Lorg/telegram/ui/ActionBar/x0;' AND name IN ('k','getSearchField','setSearchFieldHint','L')) OR
(class_descriptor='Lorg/telegram/ui/ActionBar/n6;' AND name='t0') OR
(class_descriptor='Lorg/telegram/ui/Cells/x0;' AND name IN ('<init>','setCustomText')) OR
(class_descriptor='Lorg/telegram/ui/Cells/u1;' AND name IN ('<init>','V3','setFullyDraw','setAllowAssistant','getPhotoImage','setDelegate','z3')) OR
(class_descriptor='Lorg/telegram/ui/Cells/l1;') OR
(class_descriptor='Lorg/telegram/messenger/ImageReceiver;' AND name='setImageBitmap') OR
(class_descriptor='Lorg/telegram/messenger/MessageObject;' AND name='<init>') OR
(class_descriptor='Lorg/telegram/messenger/MessagesStorage;' AND name IN ('lambda$putMessages$238','putMessagesInternal')))
ORDER BY file_id,method_idx

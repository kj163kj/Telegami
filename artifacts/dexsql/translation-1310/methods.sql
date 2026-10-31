SELECT file_id,method_idx,descriptor FROM methods WHERE method_kind IS NOT NULL AND (
class_descriptor='Lorg/telegram/ui/Components/r51;' OR
(class_descriptor='Lorg/telegram/messenger/TranslateController;' AND name IN
('pushToTranslate','checkTranslation','invalidateTranslation','cancelTranslations')) OR
(class_descriptor='Lorg/telegram/tgnet/ConnectionsManager;' AND name IN ('sendRequest','cancelRequest','getInstance')) OR
class_descriptor='Lorg/telegram/tgnet/RequestDelegate;' OR
(class_descriptor='Lorg/telegram/ui/ko;' AND name IN ('q8','Fa'))) ORDER BY file_id,method_idx

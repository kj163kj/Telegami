SELECT DISTINCT file_id,method_idx,method,callee FROM method_calls WHERE
(callee_class='Lxg/o5;' AND callee_name='V') OR
(callee_class='Lxg/h5;' AND callee_name='r') OR
(callee_class IN ('Lorg/telegram/tgnet/tl/TL_stories$TL_stories_readStories;',
'Lorg/telegram/tgnet/tl/TL_stories$TL_stories_incrementStoryViews;',
'Lorg/telegram/tgnet/tl/TL_account$updateStatus;') AND callee_name='<init>')
ORDER BY file_id,method_idx,callee

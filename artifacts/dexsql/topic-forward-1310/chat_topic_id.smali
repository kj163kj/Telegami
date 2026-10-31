# file_id=2 method_idx=49655 source="C:\\Users\\Administrator\\Desktop\\Telegami\\Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/ko;->d()J"
.method public final d()J
    .registers 3

    iget-boolean v0, v2, Lorg/telegram/ui/ko;->g4:Z
    if-nez v0, :label_0014
    iget v0, v2, Lorg/telegram/ui/ko;->Q3:I
    const/4 v1, 0x3
    if-eq v0, v1, :label_0014
    const/4 v1, 0x5
    if-eq v0, v1, :label_0014
    const/16 v1, 0x8
    if-ne v0, v1, :label_0011
    goto :label_0014
    :label_0011
    const-wide/16 v0, 0x0
    return-wide v0
    :label_0014
    iget-wide v0, v2, Lorg/telegram/ui/ko;->c4:J
    return-wide v0
.end method

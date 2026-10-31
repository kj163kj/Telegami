# file_id=2 method_idx=37497 source="Telegram.apk" entry="classes3.dex" descriptor="Lorg/telegram/ui/Components/r51;->p(Lorg/telegram/ui/Components/r51;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V"
.method public static p(Lorg/telegram/ui/Components/r51;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .registers 12

    iget-object v0, v8, Lorg/telegram/ui/Components/r51;->D:Lorg/telegram/ui/Components/c51;
    iget-object v1, v8, Lorg/telegram/ui/Components/r51;->H:Lorg/telegram/ui/Components/q51;
    const/4 v2, 0x0
    iput-object v2, v8, Lorg/telegram/ui/Components/r51;->b:Ljava/lang/Integer;
    if-eqz v9, :label_0017
    const-string v3, "TRANSLATIONS_DISABLED_ALT"
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v9
    if-eqz v9, :label_0017
    invoke-virtual {v8}, Lorg/telegram/ui/Components/r51;->O()V
    return-void
    :label_0017
    instance-of v9, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;
    const/4 v3, 0x0
    if-eqz v9, :label_0064
    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v9
    if-nez v9, :label_0064
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    if-eqz v9, :label_0064
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;
    if-eqz v9, :label_0064
    iput-boolean v3, v8, Lorg/telegram/ui/Components/r51;->N:Z
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    invoke-static {v11, v9}, Lorg/telegram/ui/Components/r51;->G(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    move-result-object v9
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    move-result-object v2
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x1
    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z
    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/r51;->H(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v9
    iget-object v8, v8, Lorg/telegram/ui/Components/r51;->E:Lorg/telegram/ui/Components/qa0;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/q51;->D(Landroid/view/View;)V
    return-void
    :label_0064
    iget-boolean v9, v8, Lorg/telegram/ui/Components/r51;->N:Z
    if-eqz v9, :label_0087
    invoke-virtual {v8}, Lorg/telegram/ui/Components/r51;->dismiss()V
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;
    move-result-object v8
    sget v9, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I
    const/4 v10, 0x1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    sget v0, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x2
    new-array v1, v1, [Ljava/lang/Object;
    aput-object v11, v1, v3
    aput-object v0, v1, v10
    invoke-virtual {v8, v9, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    return-void
    :label_0087
    iget-object v9, v8, Lorg/telegram/ui/ActionBar/k3;->containerView:Landroid/view/ViewGroup;
    check-cast v9, Landroid/widget/FrameLayout;
    iget-object v10, v8, Lorg/telegram/ui/ActionBar/k3;->resourcesProvider:Lorg/telegram/ui/ActionBar/j6;
    new-instance v11, Lorg/telegram/ui/Components/xc;
    invoke-direct {v11, v9, v10}, Lorg/telegram/ui/Components/xc;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/j6;)V
    sget v9, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I
    invoke-static {v9, v11, v2}, Lj2/t;->r(ILorg/telegram/ui/Components/xc;Lorg/telegram/ui/ActionBar/j6;)V
    iget-object v9, v8, Lorg/telegram/ui/Components/r51;->x:Lorg/telegram/ui/Components/p51;
    iget-object v9, v9, Lorg/telegram/ui/Components/p51;->e:Lorg/telegram/ui/Components/n51;
    iget-object v10, v8, Lorg/telegram/ui/Components/r51;->w:Ljava/lang/String;
    iput-object v10, v8, Lorg/telegram/ui/Components/r51;->v:Ljava/lang/String;
    invoke-static {v10, v2, v2}, Lorg/telegram/ui/Components/r51;->F(Ljava/lang/String;[Z[Z)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/r6;->setText(Ljava/lang/CharSequence;)V
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/q51;->D(Landroid/view/View;)V
    return-void
.end method


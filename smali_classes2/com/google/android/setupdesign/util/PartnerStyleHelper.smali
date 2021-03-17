.class public final Lcom/google/android/setupdesign/util/PartnerStyleHelper;
.super Ljava/lang/Object;
.source "PartnerStyleHelper.java"


# direct methods
.method private static findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 162
    :cond_0
    sget v1, Lcom/google/android/setupdesign/R$id;->suc_layout_status:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/setupcompat/internal/TemplateLayout;

    :cond_1
    return-object v0
.end method

.method public static getLayoutGravity(Landroid/content/Context;)I
    .locals 2

    .line 42
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_GRAVITY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 46
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const p0, 0x800003

    return p0

    :cond_2
    const/16 p0, 0x11

    return p0
.end method

.method public static isPartnerHeavyThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z
    .locals 1

    .line 58
    instance-of v0, p0, Lcom/google/android/setupdesign/GlifLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    move-result p0

    return p0
.end method

.method public static isPartnerLightThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z
    .locals 1

    .line 66
    instance-of v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    check-cast p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p0

    return p0
.end method

.method private static shouldApplyPartnerHeavyThemeResource(Landroid/content/Context;)Z
    .locals 4

    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;

    move-result-object v0

    .line 141
    instance-of v1, v0, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 149
    sget v2, Lcom/google/android/setupdesign/R$attr;->sudUsePartnerHeavyTheme:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 151
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_2

    .line 153
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    .line 155
    :goto_1
    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    return v0
.end method

.method public static shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_0
    instance-of v0, p0, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v0, :cond_1

    .line 132
    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->isPartnerHeavyThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z

    move-result p0

    return p0

    .line 134
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static shouldApplyPartnerResource(Landroid/content/Context;)Z
    .locals 5

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->findLayoutFromActivity(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/TemplateLayout;

    move-result-object v2

    .line 102
    instance-of v3, v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v3, :cond_2

    .line 103
    check-cast v2, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 115
    sget v4, Lcom/google/android/setupdesign/R$attr;->sucUsePartnerResource:I

    aput v4, v3, v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 117
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public static shouldApplyPartnerResource(Landroid/view/View;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    instance-of v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v0, :cond_1

    .line 83
    check-cast p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->isPartnerLightThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z

    move-result p0

    return p0

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

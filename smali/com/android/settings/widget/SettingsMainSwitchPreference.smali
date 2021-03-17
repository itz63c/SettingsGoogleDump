.class public Lcom/android/settings/widget/SettingsMainSwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "SettingsMainSwitchPreference.java"


# instance fields
.field private final mBeforeCheckedChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/OnMainSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 44
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    .line 44
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0601aa

    .line 86
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p2, :cond_1

    .line 89
    sget-object v0, Landroidx/preference/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x27

    const/4 v0, 0x4

    .line 92
    invoke-static {p1, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setTitle(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private registerListenerToSwitchBar()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;

    .line 225
    iget-object v2, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    .line 228
    iget-object v2, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    goto :goto_1

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-nez v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :goto_0
    return-void
.end method

.method public hide()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    const v0, 0x7f0d0317

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 80
    invoke-virtual {p1}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    .line 81
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->updateStatus(Z)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->registerListenerToSwitchBar()V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 218
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-nez v0, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mBeforeCheckedChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setSwitchBarEnabled(Z)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mTitle:Ljava/lang/String;

    .line 114
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public updateStatus(Z)V
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 128
    iget-object p0, p0, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    :cond_0
    return-void
.end method

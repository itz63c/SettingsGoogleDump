.class public Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;
.super Lcom/android/settingslib/widget/RadioButtonPreference;
.source "ColumbusRadioButtonPreference.java"


# instance fields
.field private mMetric:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getMetric()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mMetric:I

    return p0
.end method

.method public setMetric(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mMetric:I

    return-void
.end method

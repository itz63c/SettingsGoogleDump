.class public Lcom/google/android/settings/aware/SkipGestureDialogPreference;
.super Lcom/google/android/settings/aware/AwareGestureDialogPreference;
.source "SkipGestureDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/lang/String;
    .locals 0

    .line 16
    const-class p0, Lcom/google/android/settings/aware/SkipGestureSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getDialogDisabledMessage()I
    .locals 0

    const p0, 0x7f0408d0

    return p0
.end method

.method public getGestureDialogMessage()I
    .locals 0

    const p0, 0x7f0408d2

    return p0
.end method

.method public getGestureDialogTitle()I
    .locals 0

    const p0, 0x7f0408d3

    return p0
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

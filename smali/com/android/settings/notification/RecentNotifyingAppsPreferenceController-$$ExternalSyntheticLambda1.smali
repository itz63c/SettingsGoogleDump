.class public final synthetic Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Landroid/os/Bundle;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController-$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController-$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController-$$ExternalSyntheticLambda1;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController-$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController-$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController-$$ExternalSyntheticLambda1;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->$r8$lambda$3r2YACfKbJnwP20dIJcUxF_6nOQ(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Landroid/os/Bundle;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter-$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field public final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public final synthetic f$2:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter-$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter-$$ExternalSyntheticLambda2;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter-$$ExternalSyntheticLambda2;->f$2:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter-$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter-$$ExternalSyntheticLambda2;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter-$$ExternalSyntheticLambda2;->f$2:Ljava/util/Comparator;

    invoke-static {v0, v1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->$r8$lambda$0rAd6PTYbYDK60IkdJmuEn_jsxk(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    return-void
.end method

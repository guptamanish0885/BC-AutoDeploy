page 50000 "All Profile List"
{
    ApplicationArea = All;
    Caption = 'All Profile List';
    PageType = List;
    SourceTable = "All Profile";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("App ID"; Rec."App ID")
                {
                    ToolTip = 'Specifies the value of the App ID field.', Comment = '%';
                }
                field("App Name"; Rec."App Name")
                {
                    ToolTip = 'Specifies the origin of this role, which can be either an extension, shown by its name, or a custom profile created by a user.';
                }
                field(Caption; Rec.Caption)
                {
                    ToolTip = 'Specifies the name of the organizational role.';
                }
                field("Default Role Center"; Rec."Default Role Center")
                {
                    ToolTip = 'Specifies if this profile is used for all users that are not assigned a role. Only one profile can be set as the default.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies additional information about the profile, such as its purpose. This information may be shown to users.';
                }
                field("Disable Personalization"; Rec."Disable Personalization")
                {
                    ToolTip = 'Specifies whether personalization is disabled for users of the profile.';
                }
                field(Enabled; Rec.Enabled)
                {
                    ToolTip = 'Specifies whether the profile is available in the list of roles that users can select from. Note: Users that are assigned this profile can continue to sign in even when the profile is not enabled.';
                }
                field("Profile ID"; Rec."Profile ID")
                {
                    ToolTip = 'Specifies an ID that is used to identify the profile (role). There can be more than one profile with the same ID if they come from different extensions. Avoid using spaces in the profile ID to make it easier to create URLs linking to a specific profile.';
                }
                field(Promoted; Rec.Promoted)
                {
                    ToolTip = 'Specifies whether the display name and available business features of this profile are shown in the Role Explorer. The profile must also be enabled.';
                }
                field("Role Center ID"; Rec."Role Center ID")
                {
                    ToolTip = 'Specifies the home page that users will see when they have signed in. This is the ID of a page object of type Role Center.';
                }
                field(Scope; Rec.Scope)
                {
                    ToolTip = 'Specifies if the profile is specific to your tenant or generally available in the system.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.', Comment = '%';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.', Comment = '%';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.', Comment = '%';
                }
            }
        }
    }
}

page 50021 "All Profile Page metadata list"
{
    ApplicationArea = All;
    Caption = 'All Profile Page metadata list';
    PageType = List;
    SourceTable = "All Profile Page Metadata";
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
                    ToolTip = 'Specifies the name of the app that defines this page customization.';
                }
                field("App Publisher"; Rec."App Publisher")
                {
                    ToolTip = 'Specifies the value of the App Publisher field.', Comment = '%';
                }
                field("Page ID"; Rec."Page ID")
                {
                    ToolTip = 'Specifies the number of the page object that has been customized.';
                }
                field("Profile App ID"; Rec."Profile App ID")
                {
                    ToolTip = 'Specifies the ID of the app that provided the profile that this page customization applies to.';
                }
                field("Profile App Name"; Rec."Profile App Name")
                {
                    ToolTip = 'Specifies the origin of the profile that this page customization applies to, which can be either an extension, shown by its name, or a custom profile created by a user.';
                }
                field("Profile App Publisher"; Rec."Profile App Publisher")
                {
                    ToolTip = 'Specifies the value of the Profile App Publisher field.', Comment = '%';
                }
                field("Profile ID"; Rec."Profile ID")
                {
                    ToolTip = 'Specifies the profile that the customization has been created for.';
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

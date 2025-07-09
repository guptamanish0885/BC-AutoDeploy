page 50022 "All profiles Extsn List "
{
    ApplicationArea = All;
    Caption = 'All profiles Extsn List ';
    PageType = List;
    SourceTable = "All Profile Extension";
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
                    ToolTip = 'Specifies that the profile extension was either made by users (indicated as user-created) or it is part of an installed extension (indicated by the extension name).';
                }
                field("App Publisher"; Rec."App Publisher")
                {
                    ToolTip = 'Specifies the value of the App Publisher field.', Comment = '%';
                }
                field("Profile App ID"; Rec."Profile App ID")
                {
                    ToolTip = 'Specifies the value of the Profile App ID field.', Comment = '%';
                }
                field("Profile App Name"; Rec."Profile App Name")
                {
                    ToolTip = 'Specifies the origin of the profile that this profile extension applies to, which can be either an extension (as indicated by its name) or a custom profile created by a user (indicated as user-created).';
                }
                field("Profile App Publisher"; Rec."Profile App Publisher")
                {
                    ToolTip = 'Specifies the value of the Profile App Publisher field.', Comment = '%';
                }
                field("Profile ID"; Rec."Profile ID")
                {
                    ToolTip = 'Specifies the ID of the profile that this profile extension is applied to.';
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

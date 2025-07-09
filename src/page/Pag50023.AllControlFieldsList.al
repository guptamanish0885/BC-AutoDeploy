page 50023 "All Control Fields List "
{
    ApplicationArea = All;
    Caption = 'All Control Fields List ';
    PageType = List;
    SourceTable = "All Control Fields";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Caption; Rec.Caption)
                {
                    ToolTip = 'Specifies the value of the Caption field.', Comment = '%';
                }
                field("Control ID"; Rec."Control ID")
                {
                    ToolTip = 'Specifies the value of the Control ID field.', Comment = '%';
                }
                field("Control Name"; Rec."Control Name")
                {
                    ToolTip = 'Specifies the value of the Control Name field.', Comment = '%';
                }
                field("Data Type"; Rec."Data Type")
                {
                    ToolTip = 'Specifies the value of the Data Type field.', Comment = '%';
                }
                field("Data Type Length"; Rec."Data Type Length")
                {
                    ToolTip = 'Specifies the value of the Data Type Length field.', Comment = '%';
                }
                field("Object ID"; Rec."Object ID")
                {
                    ToolTip = 'Specifies the value of the Object ID field.', Comment = '%';
                }
                field("Object Type"; Rec."Object Type")
                {
                    ToolTip = 'Specifies the value of the Object Type field.', Comment = '%';
                }
                field("Option Caption"; Rec."Option Caption")
                {
                    ToolTip = 'Specifies the value of the Option Caption field.', Comment = '%';
                }
                field("Option String"; Rec."Option String")
                {
                    ToolTip = 'Specifies the value of the Option String field.', Comment = '%';
                }
                field("Related Field ID"; Rec."Related Field ID")
                {
                    ToolTip = 'Specifies the value of the Related Field ID field.', Comment = '%';
                }
                field("Related Table ID"; Rec."Related Table ID")
                {
                    ToolTip = 'Specifies the value of the Related Table ID field.', Comment = '%';
                }
                field("Source Expression"; Rec."Source Expression")
                {
                    ToolTip = 'Specifies the value of the Source Expression field.', Comment = '%';
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

page 50025 PageControlFields
{
    ApplicationArea = All;
    Caption = 'PageControlFields';
    PageType = List;
    SourceTable = "Page Control Field";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(TableNo; Rec.TableNo)
                {
                    ToolTip = 'Specifies the value of the TableNo field.', Comment = '%';
                }
                field(PageNo; Rec.PageNo)
                {
                    ToolTip = 'Specifies the value of the PageNo field.', Comment = '%';
                }
                field(ControlId; Rec.ControlId)
                {
                    ToolTip = 'Specifies the value of the ControlId field.', Comment = '%';
                }
                field(ControlName; Rec.ControlName)
                {
                    ToolTip = 'Specifies the value of the ControlName field.', Comment = '%';
                }
                field(Editable; Rec.Editable)
                {
                    ToolTip = 'Specifies the value of the Editable field.', Comment = '%';
                }
                field(FieldNo; Rec.FieldNo)
                {
                    ToolTip = 'Specifies the value of the FieldNo field.', Comment = '%';
                }
                field(Enabled; Rec.Enabled)
                {
                    ToolTip = 'Specifies the value of the Enabled field.', Comment = '%';
                }
                field(Visible; Rec.Visible)
                {
                    ToolTip = 'Specifies the value of the Visible field.', Comment = '%';
                }
                field(OptionString; Rec.OptionString)
                {
                    ToolTip = 'Specifies the value of the Option String field.', Comment = '%';
                }
                field(Sequence; Rec.Sequence)
                {
                    ToolTip = 'Specifies the value of the Sequence field.', Comment = '%';
                }
            }
        }
    }
}

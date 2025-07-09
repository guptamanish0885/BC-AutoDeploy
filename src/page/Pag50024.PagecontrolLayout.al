page 50024 PagecontrolLayout
{
    PageType = List;
    SourceTable = PageControlLayout;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Page Control Layout';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Profile ID"; Rec."Profile ID") { ApplicationArea = All; }
                field("Page ID"; Rec."Page ID") { ApplicationArea = All; }
                field("Page Name"; Rec."Page Name") { ApplicationArea = All; }
                field("Field No."; Rec."Field No.")
                {
                    ApplicationArea = All;
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        PageCtrl: Record "Page Control Field";
                        PageCtrl1: Record "Page Control Field";
                        PageContrlFields: Page PageControlFields;
                        PageIDFilter: Integer;
                        Result: Action;
                    begin
                        PageIDFilter := Rec."Page ID";
                        PageCtrl.SetRange(PageNo, PageIDFilter);
                        PageContrlFields.SetTableView(PageCtrl);
                        PageContrlFields.LookupMode(true);
                        if PageContrlFields.RunModal() = Action::LookupOK then begin
                            PageContrlFields.GetRecord(PageCtrl);
                            Rec."Field No." := PageCtrl.FieldNo;
                            Rec."Field Name" := PageCtrl.ControlName;
                        end;
                    end;
                }
                field("Field Name"; Rec."Field Name")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Action"; Rec.Action)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        ActionEnum: Enum "Field Layout Action";
                    begin
                        // Validate if Reference Field is required
                        if Rec.Action in [ActionEnum::AddAfter, ActionEnum::AddBefore, ActionEnum::MoveAfter, ActionEnum::MoveBefore] then begin
                            if Rec."Reference Field" = '' then
                                Error('Reference Field is required when using action type "%1".', Format(Rec.Action));
                            if Rec."Reference Field" = Rec."Field Name" then
                                Error('Reference Field cannot be the same as the Field being modified.');
                        end;
                    end;
                }
                field("Reference Field"; Rec."Reference Field")
                {
                    ApplicationArea = All;
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        PageCtrl: Record "Page Control Field";
                        PageCtrl1: Record "Page Control Field";
                        PageContrlFields: Page PageControlFields;
                        PageIDFilter: Integer;
                        Result: Action;
                    begin
                        PageIDFilter := Rec."Page ID";
                        PageCtrl.SetRange(PageNo, PageIDFilter);
                        PageContrlFields.SetTableView(PageCtrl);
                        PageContrlFields.LookupMode(true);
                        if PageContrlFields.RunModal() = Action::LookupOK then begin
                            PageContrlFields.GetRecord(PageCtrl);
                            Rec."Reference Field" := PageCtrl.ControlName;
                        end;
                    end;
                }
                //field("Group Name"; Rec."Group Name") { ApplicationArea = All; }
                field("Ordering Index"; Rec."Ordering Index") { ApplicationArea = All; }
                field("Rule Active"; Rec."Rule Active") { ApplicationArea = All; }
                field("Generated"; Rec.Generated) { ApplicationArea = All; Editable = false; }
                field("Generated DateTime"; Rec."Generated DateTime") { ApplicationArea = All; Editable = false; }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Generate AL")
            {
                Caption = 'Generate AL for Selected';
                Image = GetEntries;
                ApplicationArea = All;
                trigger OnAction()
                var
                    LayoutRule: Record "PageControlLayout";
                    Generator: Codeunit "Layout AL Generator";
                begin
                    if LayoutRule.IsEmpty() then begin
                        Message('No records selected for AL code generation.');
                        exit;
                    end;
                    LayoutRule.SetRange("Rule Active", true);
                    if LayoutRule.FindSet() then
                        repeat
                            Generator.GenerateFromRule(Rec);
                        until LayoutRule.Next() = 0;
                    Message('AL Code generated for active records.');
                end;
            }
        }
    }
}
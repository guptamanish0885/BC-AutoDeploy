table 50021 PageControlLayout
{
    DataClassification = TobeClassified;
    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = TobeClassified;
            AutoIncrement = true;
        }
        field(2; "Profile ID"; Code[50])
        {
            Caption = 'Target Profile';
            DataClassification = ToBeClassified;
            TableRelation = "All Profile"."Profile ID";
        }
        field(3; "Page ID"; Integer)
        {
            Caption = 'Page Object ID';
            DataClassification = TobeClassified;
            TableRelation = AllObjWithCaption."Object ID" WHERE("Object Type" = CONST(Page));
            trigger OnValidate()
            var
                Obj: Record AllObjWithCaption;
            begin
                Rec."Page Name" := '';
                if Obj.Get(Obj."Object Type"::Page, "Page ID") then
                    Rec."Page Name" := Obj."Object Caption";
            end;
        }
        field(4; "Page Name"; Text[100])
        {
            Caption = 'Page Name (for reference)';
            DataClassification = TobeClassified;
            Editable = false;
        }
        field(5; "Field Name"; Text[100])
        {
            Caption = 'Field/Control Name';
            DataClassification = TobeClassified;
        }
        field(6; "Field Caption"; Text[100])
        {
            Caption = 'Field Caption (for UI)';
            DataClassification = TobeClassified;
        }
        field(7; "Action"; Enum "Field Layout Action")
        {
            DataClassification = TobeClassified;
        }
        field(8; "Reference Field"; Text[100])
        {
            Caption = 'Reference Field (for Add/Move)';
            DataClassification = TobeClassified;
        }

        field(9; "Group Name"; Text[100])
        {
            Caption = 'Group Name (for Add/Move targets)';
            DataClassification = TobeClassified;
        }

        field(10; "Ordering Index"; Integer)
        {
            Caption = 'Sort Order';
            DataClassification = TobeClassified;

            trigger OnValidate()
            var
                Rule: Record "PageControlLayout";
            begin
                if "Ordering Index" < 0 then
                    Error('Ordering Index must be a non-negative integer.');
                Rule.Reset();
                Rule.SetRange("Profile ID", "Profile ID");
                Rule.SetRange("Page ID", "Page ID");
                Rule.SetRange("Ordering Index", "Ordering Index");
                Rule.SetRange("Entry No.", 0, ("Entry No." - 1)); // exclude self during modify
                if Rule.FindFirst() then
                    Error('Ordering Index "%1" is already used for Profile "%2" and Page "%3". Choose a different value.',
                        "Ordering Index", "Profile ID", "Page ID");
            end;
        }

        field(11; "Generated AL"; BLOB)
        {
            Subtype = Memo;
            Caption = 'Generated AL Snippet';
            DataClassification = TobeClassified;
        }

        field(12; "Generated"; Boolean)
        {
            Caption = 'AL Generated';
            DataClassification = TobeClassified;
        }

        field(13; "Generated DateTime"; DateTime)
        {
            Caption = 'Generation Timestamp';
            DataClassification = TobeClassified;
        }

        field(14; "Customization ID"; Code[20])
        {
            Caption = 'AL Customization ID (pagecustomization)';
            DataClassification = TobeClassified;
        }

        field(15; "Profile Extension ID"; Code[20])
        {
            Caption = 'AL Profile Extension ID';
            DataClassification = TobeClassified;
        }

        field(16; "Rule Active"; Boolean)
        {
            Caption = 'Is Active?';
            DataClassification = TobeClassified;
        }

        field(17; "Comment"; Text[250])
        {
            Caption = 'Optional Notes';
            DataClassification = TobeClassified;
        }

        field(18; "Created By"; Code[50])
        {
            Caption = 'Created By User ID';
            DataClassification = TobeClassified;
        }

        field(19; "Created At"; DateTime)
        {
            Caption = 'Created Timestamp';
            DataClassification = TobeClassified;
        }

        field(20; "Last Modified By"; Code[50])
        {
            Caption = 'Modified By';
            DataClassification = TobeClassified;
        }

        field(21; "Last Modified At"; DateTime)
        {
            Caption = 'Modified Timestamp';
            DataClassification = TobeClassified;
        }
        field(24; "Field No."; Integer)
        {
            Caption = 'Field No.';
            DataClassification = TobeClassified;
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
        key(Sec; "Profile ID", "Page ID", "Field Name") { }
    }
}
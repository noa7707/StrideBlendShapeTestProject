using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Stride.Core.Mathematics;
using Stride.Input;
using Stride.Engine;
using static System.Runtime.InteropServices.JavaScript.JSType;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;

namespace MyGame
{
    public class Script : SyncScript
    {
        // Declared public member fields and properties will show in the game studio

        public override void Start()
        {
            blendVal = minValue;
        }


        public float minValue = 0f;
        public float maxValue = 1f;
        public float pingSpeed = 2f;

        private float blendVal;
        private bool increasing = true;

        public override void Update()
        {
            var deltaTime = (float)Game.UpdateTime.Elapsed.TotalSeconds;

            if (increasing)
            {
                blendVal += pingSpeed * deltaTime;
                if (blendVal >= maxValue)
                {
                    blendVal = maxValue;
                    increasing = false;
                }
            }
        else
            {
                blendVal -= pingSpeed * deltaTime;
                if (blendVal <= minValue)
                {
                    blendVal = minValue;
                    increasing = true;
                }
            }



            Entity.Get<ModelComponent>().Model.Meshes[0].SetBlendShapeWeightByIndex(0, blendVal);
          
        }
    }
}
